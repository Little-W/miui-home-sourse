.class final Lcom/miui/home/launcher/upsidescene/SpriteView$1;
.super Ljava/lang/Object;
.source "SpriteView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/SpriteView;->createFolder(Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;Lcom/miui/home/launcher/upsidescene/SceneScreen;Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView$1;->val$sceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView$1;->val$sceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    check-cast p1, Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/Launcher;->openFolder(Lcom/miui/home/launcher/FolderInfo;Landroid/view/View;)V

    return-void
.end method
