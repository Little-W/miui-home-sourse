.class Lcom/miui/home/launcher/FolderIcon$14;
.super Lcom/miui/home/launcher/util/noword/NoWordItemIconAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderIcon;->initNoWordAdapter()Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderIcon;Lcom/miui/home/launcher/ItemIcon;)V
    .locals 0

    .line 827
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$14;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/util/noword/NoWordItemIconAdapter;-><init>(Lcom/miui/home/launcher/ItemIcon;)V

    return-void
.end method


# virtual methods
.method public canDrawForegroundTitle()Z
    .locals 2

    .line 835
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$14;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderIcon;->access$1200(Lcom/miui/home/launcher/FolderIcon;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public viewChangeAlphaWhenEditModeChange()Landroid/view/View;
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$14;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderIcon;->access$1200(Lcom/miui/home/launcher/FolderIcon;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
