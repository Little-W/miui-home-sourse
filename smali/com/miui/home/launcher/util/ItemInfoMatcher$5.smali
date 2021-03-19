.class final Lcom/miui/home/launcher/util/ItemInfoMatcher$5;
.super Lcom/miui/home/launcher/util/ItemInfoMatcher;
.source "ItemInfoMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/util/ItemInfoMatcher;->ofXSpaceUser()Lcom/miui/home/launcher/util/ItemInfoMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/miui/home/launcher/util/ItemInfoMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 0

    .line 88
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method
