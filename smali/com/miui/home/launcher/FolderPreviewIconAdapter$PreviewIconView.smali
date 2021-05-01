.class Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;
.super Landroid/widget/ImageView;
.source "FolderPreviewIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderPreviewIconAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreviewIconView"
.end annotation


# instance fields
.field public mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

.field private mContext:Landroid/content/Context;

.field private mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 179
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    iput-object p1, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;->mContext:Landroid/content/Context;

    .line 181
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    .line 182
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private setItemPadding()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getFolderPreviewItemPadding()I

    move-result v0

    .line 206
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 190
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 191
    iget-object v0, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    check-cast v2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget v2, v2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    invoke-static {v0, p1, v1, v2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->drawProgressIcon(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 194
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;->setItemPadding()V

    .line 201
    invoke-super {p0, p1, p1}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method