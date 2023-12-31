.class public Lcom/miui/home/launcher/folder/FolderPreviewIconView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "FolderPreviewIconView.kt"

# interfaces
.implements Lcom/miui/home/launcher/LauncherAble;
.implements Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
.implements Lcom/miui/home/launcher/folder/IItemDragAnim;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFolderPreviewIconView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderPreviewIconView.kt\ncom/miui/home/launcher/folder/FolderPreviewIconView\n*L\n1#1,198:1\n*E\n"
.end annotation


# instance fields
.field private mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

.field private final mClickDelegate:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;

.field private mContext:Landroid/content/Context;

.field private mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

.field private final mPreViewTouchDelegate:Lcom/miui/home/launcher/folder/PreViewTouchDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance p2, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;

    invoke-direct {p2}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mClickDelegate:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;

    .line 28
    new-instance p2, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;

    invoke-direct {p2}, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mPreViewTouchDelegate:Lcom/miui/home/launcher/folder/PreViewTouchDelegate;

    .line 36
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mContext:Landroid/content/Context;

    .line 37
    sget-object p1, Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;->Companion:Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$Companion;

    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$Companion;->getInstance()Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/common/IconSizeProvider;

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    .line 38
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 39
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mPreViewTouchDelegate:Lcom/miui/home/launcher/folder/PreViewTouchDelegate;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->initTouchAnim(Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 33
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 34
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getContentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string v1, "drawable"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-object v0
.end method

.method public getIconImageView()Landroid/view/View;
    .locals 0

    .line 112
    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public getIconImageViewOriginalLocation()Landroid/graphics/Rect;
    .locals 7

    .line 165
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 168
    move-object v3, p0

    check-cast v3, Landroid/view/View;

    .line 169
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 167
    invoke-static {v3, v4, v0, v2, v2}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 171
    new-instance v3, Landroid/graphics/Rect;

    .line 172
    aget v4, v0, v2

    float-to-int v4, v4

    .line 173
    aget v5, v0, v1

    float-to-int v5, v5

    .line 174
    aget v2, v0, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v2, v2

    .line 175
    aget v0, v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    float-to-int p0, v0

    .line 171
    invoke-direct {v3, v4, v5, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    .line 165
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ItemIcon hasn\'t layout"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public getIconLocation()Landroid/graphics/Rect;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 44
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 45
    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    aget v2, v0, v3

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 47
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    .line 48
    aget v4, v0, v1

    .line 49
    aget v5, v0, v3

    .line 50
    aget v1, v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getWidth()I

    move-result v6

    add-int/2addr v1, v6

    .line 51
    aget v0, v0, v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    .line 47
    invoke-direct {v2, v4, v5, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p0, v2

    :goto_0
    return-object p0
.end method

.method public getIconRadius()F
    .locals 1

    .line 101
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getMeasuredHeight()I

    move-result p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultIconRadius(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x40951eb8    # 4.66f

    div-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getIconTransparentEdge()I
    .locals 1

    .line 105
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getMeasuredHeight()I

    move-result p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/DeviceConfig;->getIconImageViewPadding(Landroid/content/res/Resources;I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getMBuddyInfo()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    return-object p0
.end method

.method protected final getMClickDelegate()Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mClickDelegate:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;

    return-object p0
.end method

.method protected final getMContext()Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method protected final getMIconSizeProvider()Lcom/miui/home/launcher/common/IconSizeProvider;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    return-object p0
.end method

.method protected final getMPreViewTouchDelegate()Lcom/miui/home/launcher/folder/PreViewTouchDelegate;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mPreViewTouchDelegate:Lcom/miui/home/launcher/folder/PreViewTouchDelegate;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_5

    .line 139
    instance-of v1, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 144
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "mBuddyInfo!!.iconBitmap"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 145
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 148
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mContext:Landroid/content/Context;

    .line 150
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 151
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p0, :cond_4

    check-cast p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget p0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    .line 147
    invoke-static {v0, p1, v1, p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->drawProgressIcon(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 151
    :cond_4
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.miui.home.launcher.progress.ProgressShortcutInfo"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 155
    :cond_5
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method public onEnterHomeAnimFinish()V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getIconImageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getIconImageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getIconImageView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setItemPadding(I)V

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setMeasuredDimension(II)V

    .line 70
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mClickDelegate:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;

    invoke-virtual {v1, p1, p0}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->onViewTouchEvent(Landroid/view/MotionEvent;Lcom/miui/home/launcher/folder/FolderPreviewIconView;)V

    .line 85
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mClickDelegate:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;

    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->hasViewClickListeners()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 87
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mPreViewTouchDelegate:Lcom/miui/home/launcher/folder/PreViewTouchDelegate;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->onTouchDown()V

    return v1

    :cond_0
    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_2

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mPreViewTouchDelegate:Lcom/miui/home/launcher/folder/PreViewTouchDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->onTouchUp()V

    .line 97
    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performPreViewItemHiddenAnim()V
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    instance-of v1, v0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-eqz v1, :cond_0

    .line 122
    check-cast v0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->isPreviewPlaceholder(Lcom/miui/home/launcher/folder/FolderPreviewIconView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 126
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public performPreViewItemShowAnim()V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setVisibility(I)V

    return-void
.end method

.method public resetImageViewVisibility()V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setVisibility(I)V

    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->sendAccessibilityEvent(I)V

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mClickDelegate:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->onSendAccessibilityEvent(ILcom/miui/home/launcher/folder/FolderPreviewIconView;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 3

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolderPreviewIconView setAlpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "PreviewDisappear"

    invoke-static {v2, v0, v1}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setAlpha(F)V

    return-void
.end method

.method public final setItemPadding(I)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getFolderPreviewItemPadding()I

    move-result v0

    add-int/2addr v0, p1

    .line 161
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setPadding(IIII)V

    return-void
.end method

.method public final setMBuddyInfo(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method

.method protected final setMContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected final setMIconSizeProvider(Lcom/miui/home/launcher/common/IconSizeProvider;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    return-void
.end method

.method public final setViewClickListener(Lcom/miui/home/launcher/folder/ListenerInfo;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->mClickDelegate:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->delegateViewClick(Lcom/miui/home/launcher/folder/FolderPreviewIconView;Lcom/miui/home/launcher/folder/ListenerInfo;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolderPreviewIconView setVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "PreviewDisappear"

    invoke-static {v2, v0, v1}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method
