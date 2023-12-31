.class final Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$2;
.super Ljava/lang/Object;
.source "FolderIconPreviewContainer1X1.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;)V
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
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $currentIndex:I

.field final synthetic $si:Lcom/miui/home/launcher/ShortcutInfo;

.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;Lcom/miui/home/launcher/ShortcutInfo;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$2;->this$0:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    iput-object p2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$2;->$si:Lcom/miui/home/launcher/ShortcutInfo;

    iput p3, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$2;->$currentIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set icon for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$2;->$si:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " preview drawable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewDisappear"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawable alpha: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image view alpha: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$2;->this$0:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    invoke-static {v2}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->access$getMItemIcons$p(Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;)[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$2;->$currentIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->getAlpha()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$2;->$si:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$2;->this$0:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    invoke-static {v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->access$getMItemIcons$p(Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;)[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$2;->$currentIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$2;->this$0:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    invoke-static {p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->access$getMItemIcons$p(Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;)[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$2;->$currentIndex:I

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$2;->$si:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->setMBuddyInfo(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 121
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$2;->this$0:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    invoke-static {p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->access$getMItemIcons$p(Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;)[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$2;->$currentIndex:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->getMBuddyInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz p1, :cond_2

    .line 122
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$2;->this$0:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    invoke-static {p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->access$getMItemIcons$p(Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;)[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    move-result-object p1

    iget p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$2;->$currentIndex:I

    aget-object p0, p1, p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->invalidate()V

    :cond_2
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$2;->accept(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
