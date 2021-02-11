.class Lcom/miui/home/launcher/upsidescene/EditModeBottomBar$4;
.super Ljava/lang/Object;
.source "EditModeBottomBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar$4;->this$0:Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar$4;->this$0:Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;

    invoke-static {p1}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->access$000(Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;)Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getEditFocusedSprite()Lcom/miui/home/launcher/upsidescene/SpriteView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/data/Sprite;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->createFunction(I)Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->setFunction(Lcom/miui/home/launcher/upsidescene/data/Function;)V

    .line 160
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar$4;->this$0:Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->refreshFreeButtonCheckbox()V

    return-void
.end method
