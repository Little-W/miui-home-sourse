.class public final Lcom/miui/home/launcher/util/noword/NoWordAutoAdaptRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "NoWordAutoAdaptViewGroup.kt"

# interfaces
.implements Lcom/miui/home/launcher/util/noword/NoWordAutoAdaptViewGroup;


# instance fields
.field private mIsDrawingInThumbnailView:Z

.field private mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/miui/home/launcher/util/noword/NoWordAutoAdaptRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 18
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/util/noword/NoWordAutoAdaptRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordAutoAdaptRelativeLayout;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    if-eqz v0, :cond_3

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->preDrawChild(Landroid/view/View;)I

    move-result v0

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_2

    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 39
    iget-object p3, p0, Lcom/miui/home/launcher/util/noword/NoWordAutoAdaptRelativeLayout;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    if-nez p3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-boolean p0, p0, Lcom/miui/home/launcher/util/noword/NoWordAutoAdaptRelativeLayout;->mIsDrawingInThumbnailView:Z

    invoke-virtual {p3, p1, p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->afterDrawChild(Landroid/graphics/Canvas;Z)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    .line 44
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    :goto_0
    return p2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setIsDrawingInThumbnailView(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/miui/home/launcher/util/noword/NoWordAutoAdaptRelativeLayout;->mIsDrawingInThumbnailView:Z

    return-void
.end method

.method public setNoWordAdapter(Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(",
            "Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter<",
            "TV;>;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/miui/home/launcher/util/noword/NoWordAutoAdaptRelativeLayout;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    return-void
.end method
