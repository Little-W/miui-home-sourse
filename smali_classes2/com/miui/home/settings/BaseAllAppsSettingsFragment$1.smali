.class Lcom/miui/home/settings/BaseAllAppsSettingsFragment$1;
.super Ljava/lang/Object;
.source "BaseAllAppsSettingsFragment.java"

# interfaces
.implements Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->branchSettingChange(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/BaseAllAppsSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$1;->this$0:Lcom/miui/home/settings/BaseAllAppsSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogDismiss()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$1;->this$0:Lcom/miui/home/settings/BaseAllAppsSettingsFragment;

    invoke-static {v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->access$000(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)Lcom/miui/home/settings/preference/CheckBoxPreference;

    move-result-object v0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isQuickSearchSwitchOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    .line 299
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$1;->this$0:Lcom/miui/home/settings/BaseAllAppsSettingsFragment;

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchSwitchOn()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->access$100(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;Z)V

    return-void
.end method
