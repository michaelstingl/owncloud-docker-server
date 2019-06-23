# Prerequisites for demo environment

## User

- admin (already exists)
- alice
- bob

## Files

### Alice Files

**Skeleton files** (already there)

```
.
├── Documents
│   └── Example.odt
├── Photos
│   ├── Paris.jpg
│   ├── San\ Francisco.jpg
│   └── Squirrel.jpg
└── ownCloud\ Manual.pdf
```

**Demo files**

https://github.com/michaelstingl/owncloud-example-files/tree/master/Demo

```
.
├── Demo
│   ├── chuttersnap-171897.jpg
│   ├── denys-nevozhai-100695.jpg
│   ├── denys-nevozhai-185489.jpg
│   ├── emmad-mazhari-216134.jpg
│   ├── ian-dooley-280928.jpg
│   ├── jakob-owens-208991.jpg
│   ├── paul-gilmore-110020.jpg
│   └── wilco-van-meppelen-264058.jpg
```

**Shared folders** (Quick Acces)

```
└── share_demo
    ├── alice2bob_accepted
    ├── alice2bob_pending
    ├── alice2bob_rejected
    └── alice_link
```
## Bob Files

**Skeleton files** (already there)

```
.
├── Documents
│   └── Example.odt
├── Photos
│   ├── Paris.jpg
│   ├── San\ Francisco.jpg
│   └── Squirrel.jpg
└── ownCloud\ Manual.pdf
```

**Shared folders** (Quick Acces)

```
└── share_demo
    ├── bob2alice_accepted
    ├── bob2alice_pending
    ├── bob2alice_rejected
    ├── bob_link
    ├── remote_bob2alice_accepted (bob shares with alice@sameinstance, alice accepts) <== needs proper SSL
    └── remote_bob2alice_pending (bob shares with alice@sameinstance) <== needs proper SSL
```
