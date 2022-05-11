.class Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$GroupShortcutCache;
.super Ljava/util/HashMap;
.source "HotSeatsListRecentsAppProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupShortcutCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Landroid/os/UserHandle;",
        "Ljava/util/HashMap<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/miui/home/launcher/GroupShortcutInfo;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$1;)V
    .locals 0

    .line 261
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$GroupShortcutCache;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroupShortcutInfo(Lcom/miui/home/launcher/GroupShortcutInfo;)Lcom/miui/home/launcher/GroupShortcutInfo;
    .locals 5

    .line 264
    invoke-virtual {p1}, Lcom/miui/home/launcher/GroupShortcutInfo;->getShortcutInfo1()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    .line 265
    invoke-virtual {p1}, Lcom/miui/home/launcher/GroupShortcutInfo;->getShortcutInfo2()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    .line 266
    invoke-virtual {p1}, Lcom/miui/home/launcher/GroupShortcutInfo;->hasPairApp()Z

    move-result p1

    .line 268
    iget-object v2, v0, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 269
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$GroupShortcutCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 271
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 272
    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$GroupShortcutCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    .line 277
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/GroupShortcutInfo;

    if-nez p1, :cond_2

    .line 280
    new-instance p1, Lcom/miui/home/launcher/GroupShortcutInfo;

    invoke-direct {p1, v0, v1}, Lcom/miui/home/launcher/GroupShortcutInfo;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 281
    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1
.end method
