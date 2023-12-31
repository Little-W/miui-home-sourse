.class final Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutOfSamePackageToConvert$infoInDesktop$1;
.super Ljava/lang/Object;
.source "BigIconUtil.kt"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/bigicon/BigIconUtil;->getShortcutOfSamePackageToConvert(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $activityName:Ljava/lang/String;

.field final synthetic $packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutOfSamePackageToConvert$infoInDesktop$1;->$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutOfSamePackageToConvert$infoInDesktop$1;->$activityName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 4

    const-string v0, "shortcutInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutOfSamePackageToConvert$infoInDesktop$1;->$packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isApplicatoin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const/16 v2, -0x64

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 249
    iget-object p0, p0, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutOfSamePackageToConvert$infoInDesktop$1;->$activityName:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 40
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutOfSamePackageToConvert$infoInDesktop$1;->test(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p0

    return p0
.end method
