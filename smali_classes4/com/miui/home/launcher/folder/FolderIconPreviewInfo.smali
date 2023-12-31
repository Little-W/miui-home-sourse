.class public final Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;
.super Ljava/lang/Object;
.source "FolderIconPreviewInfo.kt"


# instance fields
.field private final groupRect:Landroid/graphics/Rect;

.field private final height:I

.field private final rect:Landroid/graphics/Rect;

.field private final screenX:I

.field private final screenY:I

.field private final width:I


# direct methods
.method public constructor <init>(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "rect"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupRect"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->screenX:I

    iput p2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->screenY:I

    iput p3, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->width:I

    iput p4, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->height:I

    iput-object p5, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->rect:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->groupRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->screenX:I

    iget v1, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->screenX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->screenY:I

    iget v1, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->screenY:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->width:I

    iget v1, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->height:I

    iget v1, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->height:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->rect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->rect:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->groupRect:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->groupRect:Landroid/graphics/Rect;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getGroupRect()Landroid/graphics/Rect;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->groupRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getWidth()I
    .locals 0

    .line 11
    iget p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->width:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->screenX:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->screenY:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->rect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->groupRect:Landroid/graphics/Rect;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolderIconPreviewInfo(screenX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->screenX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->screenY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", groupRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->groupRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
