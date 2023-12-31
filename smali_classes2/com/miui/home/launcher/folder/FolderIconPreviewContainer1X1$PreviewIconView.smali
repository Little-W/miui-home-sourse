.class public final Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "FolderIconPreviewContainer1X1.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreviewIconView"
.end annotation


# instance fields
.field private mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

.field private mContext:Landroid/content/Context;

.field private mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

.field private progressIconPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 216
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object p2

    const-string p3, "LauncherIconSizeProvider.getInstance()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/miui/home/launcher/common/IconSizeProvider;

    iput-object p2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    .line 217
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 172
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mContext:Landroid/content/Context;

    .line 173
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/miui/home/launcher/common/IconSizeProvider;

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    .line 174
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 169
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 170
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final setItemPadding()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    if-nez v0, :cond_0

    const-string v1, "mIconSizeProvider"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getFolderPreviewItemPadding()I

    move-result v0

    .line 209
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/DeviceConfig;->getIconImageViewPadding(Landroid/content/res/Resources;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 212
    :cond_1
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final getMBuddyInfo()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_8

    .line 178
    instance-of v1, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v1, :cond_8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_8

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 182
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->progressIconPadding:I

    if-nez v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    if-nez v0, :cond_1

    const-string v1, "mIconSizeProvider"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getFolderPreviewItemPadding()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/DeviceConfig;->getIconImageViewPadding(Landroid/content/res/Resources;I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->progressIconPadding:I

    .line 185
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->progressIconPadding:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 187
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->progressIconPadding:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "mBuddyInfo!!.iconBitmap"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 188
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->progressIconPadding:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 186
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 191
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    const-string v1, "mContext"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 193
    :cond_5
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 194
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p0, :cond_7

    check-cast p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget p0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    .line 190
    invoke-static {v0, p1, v1, p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->drawProgressIcon(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 194
    :cond_7
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.miui.home.launcher.progress.ProgressShortcutInfo"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 198
    :cond_8
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->setItemPadding()V

    .line 204
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    return-void
.end method

.method public final setMBuddyInfo(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method
