.class Lcom/miui/home/launcher/upsidescene/EditModeBottomBar$5;
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

    .line 163
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar$5;->this$0:Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar$5;->this$0:Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;

    invoke-static {p1}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->access$000(Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;)Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->showTogglesSelectView()V

    return-void
.end method
