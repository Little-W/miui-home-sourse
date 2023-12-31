.class final Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutLocationOfSamePackage$1;
.super Ljava/lang/Object;
.source "BigIconUtil.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/bigicon/BigIconUtil;->getShortcutLocationOfSamePackage(Ljava/util/List;)I
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
        "Ljava/util/function/Consumer<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $location:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutLocationOfSamePackage$1;->$location:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInWorkspace()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutLocationOfSamePackage$1;->$location:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 181
    iget-object p0, p0, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutLocationOfSamePackage$1;->$location:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInHotseat()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInHotseatRecommend()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutLocationOfSamePackage$1;->$location:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_2

    .line 183
    iget-object p0, p0, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutLocationOfSamePackage$1;->$location:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutLocationOfSamePackage$1;->$location:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_3

    .line 185
    iget-object p0, p0, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutLocationOfSamePackage$1;->$location:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutLocationOfSamePackage$1;->accept(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method
