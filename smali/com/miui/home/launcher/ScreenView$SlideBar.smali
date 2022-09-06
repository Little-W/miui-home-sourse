.class public Lcom/miui/home/launcher/ScreenView$SlideBar;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "ScreenView.java"

# interfaces
.implements Lcom/miui/home/launcher/ScreenView$Indicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SlideBar"
.end annotation


# instance fields
.field private mPadding:Landroid/graphics/Rect;

.field private mPos:Landroid/graphics/Rect;

.field private mSlidePoint:Landroid/graphics/NinePatch;

.field private mSlidePointBmp:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/miui/home/launcher/ScreenView;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/ScreenView;Landroid/content/Context;II)V
    .locals 1

    .line 643
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->this$0:Lcom/miui/home/launcher/ScreenView;

    .line 644
    invoke-direct {p0, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;)V

    .line 640
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    .line 641
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    .line 645
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView$SlideBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    .line 646
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    return-void

    .line 650
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 652
    new-instance p2, Landroid/graphics/NinePatch;

    iget-object p3, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-direct {p2, p3, p1, v0}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object p2, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    .line 656
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 657
    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 658
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 p4, -0x2

    const/16 v0, 0x50

    invoke-direct {p2, p3, p4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 662
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView$SlideBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 664
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 665
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 666
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 667
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 668
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 678
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 679
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_0

    .line 680
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public getSlidePaddingLeft()I
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getSlideWidth()I
    .locals 2

    .line 698
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView$SlideBar;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-super {p0}, Lcom/miui/launcher/views/LauncherFrameLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onSetFrame(IIII)V
    .locals 0

    .line 686
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    if-eqz p1, :cond_0

    .line 687
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, p2

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 688
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p3, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    invoke-virtual {p3}, Landroid/graphics/NinePatch;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method

.method public setPosition(II)V
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 694
    iput p2, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method
