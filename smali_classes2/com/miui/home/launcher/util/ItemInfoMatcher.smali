.class public abstract Lcom/miui/home/launcher/util/ItemInfoMatcher;
.super Ljava/lang/Object;
.source "ItemInfoMatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static not(Lcom/miui/home/launcher/util/ItemInfoMatcher;)Lcom/miui/home/launcher/util/ItemInfoMatcher;
    .locals 1

    .line 67
    new-instance v0, Lcom/miui/home/launcher/util/ItemInfoMatcher$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/util/ItemInfoMatcher$3;-><init>(Lcom/miui/home/launcher/util/ItemInfoMatcher;)V

    return-object v0
.end method

.method public static ofCategory(I)Lcom/miui/home/launcher/util/ItemInfoMatcher;
    .locals 1

    .line 124
    new-instance v0, Lcom/miui/home/launcher/util/ItemInfoMatcher$9;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/util/ItemInfoMatcher$9;-><init>(I)V

    return-object v0
.end method

.method public static ofComponentKeys(Ljava/util/HashSet;)Lcom/miui/home/launcher/util/ItemInfoMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;)",
            "Lcom/miui/home/launcher/util/ItemInfoMatcher;"
        }
    .end annotation

    .line 133
    new-instance v0, Lcom/miui/home/launcher/util/ItemInfoMatcher$10;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/util/ItemInfoMatcher$10;-><init>(Ljava/util/HashSet;)V

    return-object v0
.end method

.method public static ofEmpty()Lcom/miui/home/launcher/util/ItemInfoMatcher;
    .locals 1

    .line 142
    new-instance v0, Lcom/miui/home/launcher/util/ItemInfoMatcher$11;

    invoke-direct {v0}, Lcom/miui/home/launcher/util/ItemInfoMatcher$11;-><init>()V

    return-object v0
.end method

.method public static ofPackages(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/miui/home/launcher/util/ItemInfoMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Lcom/miui/home/launcher/util/ItemInfoMatcher;"
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/miui/home/launcher/util/ItemInfoMatcher$7;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/util/ItemInfoMatcher$7;-><init>(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public static ofUser(Landroid/os/UserHandle;)Lcom/miui/home/launcher/util/ItemInfoMatcher;
    .locals 1

    .line 76
    new-instance v0, Lcom/miui/home/launcher/util/ItemInfoMatcher$4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/util/ItemInfoMatcher$4;-><init>(Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public static ofXSpaceUser()Lcom/miui/home/launcher/util/ItemInfoMatcher;
    .locals 1

    .line 85
    new-instance v0, Lcom/miui/home/launcher/util/ItemInfoMatcher$5;

    invoke-direct {v0}, Lcom/miui/home/launcher/util/ItemInfoMatcher$5;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z
.end method

.method public or(Lcom/miui/home/launcher/util/ItemInfoMatcher;)Lcom/miui/home/launcher/util/ItemInfoMatcher;
    .locals 1

    .line 41
    new-instance v0, Lcom/miui/home/launcher/util/ItemInfoMatcher$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/miui/home/launcher/util/ItemInfoMatcher$1;-><init>(Lcom/miui/home/launcher/util/ItemInfoMatcher;Lcom/miui/home/launcher/util/ItemInfoMatcher;Lcom/miui/home/launcher/util/ItemInfoMatcher;)V

    return-object v0
.end method
