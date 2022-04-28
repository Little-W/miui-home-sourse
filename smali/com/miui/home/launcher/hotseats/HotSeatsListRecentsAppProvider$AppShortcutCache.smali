.class Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$AppShortcutCache;
.super Ljava/util/HashMap;
.source "HotSeatsListRecentsAppProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppShortcutCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Landroid/os/UserHandle;",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$1;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$AppShortcutCache;-><init>()V

    return-void
.end method


# virtual methods
.method public getShortcutInfo(Lcom/miui/home/launcher/AppInfo;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 2

    .line 219
    iget-object v0, p1, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    .line 221
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$AppShortcutCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 224
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$AppShortcutCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v0, :cond_1

    .line 229
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->makeShortcut()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    .line 230
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
