.class Lcom/miui/home/launcher/FolderIcon$11;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Lcom/miui/home/launcher/common/AppCategoryManager$OnCategoryLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderIcon;->updateFolderTilte(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$11;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppCategoryNameLoaded(Ljava/lang/String;)V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$11;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderIcon;->access$1000(Lcom/miui/home/launcher/FolderIcon;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon$11;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v1}, Lcom/miui/home/launcher/FolderIcon;->access$1100(Lcom/miui/home/launcher/FolderIcon;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    return-void
.end method
