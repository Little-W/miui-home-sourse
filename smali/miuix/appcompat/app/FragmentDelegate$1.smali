.class Lmiuix/appcompat/app/FragmentDelegate$1;
.super Lmiuix/appcompat/internal/view/SimpleWindowCallback;
.source "FragmentDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/FragmentDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/FragmentDelegate;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/FragmentDelegate;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-direct {p0}, Lmiuix/appcompat/internal/view/SimpleWindowCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-static {v0}, Lmiuix/appcompat/app/FragmentDelegate;->access$000(Lmiuix/appcompat/app/FragmentDelegate;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/IFragment;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-static {v0}, Lmiuix/appcompat/app/FragmentDelegate;->access$000(Lmiuix/appcompat/app/FragmentDelegate;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/IFragment;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 75
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/FragmentDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 60
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
