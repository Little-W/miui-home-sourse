.class final Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;
.super Ljava/lang/Object;
.source "BaseFolderIconPreviewContainer2X2.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->runLoadAction(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V
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

.field final synthetic this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Lcom/miui/home/launcher/ShortcutInfo;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    iput-object p2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->$si:Lcom/miui/home/launcher/ShortcutInfo;

    iput p3, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->$currentIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2x2 set icon for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->$si:Lcom/miui/home/launcher/ShortcutInfo;

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

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2x2 drawable alpha: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 248
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->$si:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 249
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->$currentIndex:I

    iget-object v2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMRealPvChildCount()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2x2 image view alpha: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->$currentIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getAlpha()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->$currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    iget-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->$currentIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->$si:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setMBuddyInfo(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 253
    iget-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->$currentIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->$si:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 254
    iget-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->$currentIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getMBuddyInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz p1, :cond_7

    .line 255
    iget-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    iget p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->$currentIndex:I

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->invalidate()V

    :cond_7
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;->accept(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
