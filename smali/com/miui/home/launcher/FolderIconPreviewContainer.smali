.class public Lcom/miui/home/launcher/FolderIconPreviewContainer;
.super Landroid/widget/LinearLayout;
.source "FolderIconPreviewContainer.java"


# instance fields
.field private mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/FolderIconPreviewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/FolderIconPreviewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIconPreviewContainer;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 30
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIconPreviewContainer;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {p1}, Lcom/miui/home/launcher/common/IconSizeProvider;->getFolderPreviewWidth()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIconPreviewContainer;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getFolderPreviewHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 32
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
