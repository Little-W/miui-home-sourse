.class Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;
.super Ljava/util/HashMap;
.source "HotSeatsListRecentsAppProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PairShortcutCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Landroid/os/UserHandle;",
        "Ljava/util/HashMap<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/miui/home/launcher/PairShortcutInfo;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$1;)V
    .locals 0

    .line 309
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroupShortcutInfo(Lcom/miui/home/launcher/PairShortcutInfo;)Lcom/miui/home/launcher/PairShortcutInfo;
    .locals 4

    .line 312
    invoke-virtual {p1}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo1()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    .line 313
    invoke-virtual {p1}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo2()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    .line 314
    invoke-virtual {p1}, Lcom/miui/home/launcher/PairShortcutInfo;->hasPairApp()Z

    move-result p1

    .line 316
    iget-object v2, v0, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 317
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 319
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 320
    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    .line 325
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/PairShortcutInfo;

    if-nez p1, :cond_2

    .line 328
    new-instance p1, Lcom/miui/home/launcher/PairShortcutInfo;

    invoke-direct {p1, v0, v1}, Lcom/miui/home/launcher/PairShortcutInfo;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 329
    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1
.end method
