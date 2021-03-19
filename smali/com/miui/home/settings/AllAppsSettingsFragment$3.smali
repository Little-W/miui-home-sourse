.class Lcom/miui/home/settings/AllAppsSettingsFragment$3;
.super Ljava/lang/Object;
.source "AllAppsSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/AllAppsSettingsFragment;->showInstallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/AllAppsSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/AllAppsSettingsFragment;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment$3;->this$0:Lcom/miui/home/settings/AllAppsSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 234
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment$3;->this$0:Lcom/miui/home/settings/AllAppsSettingsFragment;

    invoke-static {p1}, Lcom/miui/home/settings/AllAppsSettingsFragment;->access$100(Lcom/miui/home/settings/AllAppsSettingsFragment;)Lcom/miui/home/settings/preference/ListPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/settings/AllAppsSettingsFragment$3;->this$0:Lcom/miui/home/settings/AllAppsSettingsFragment;

    invoke-static {p2}, Lcom/miui/home/settings/AllAppsSettingsFragment;->access$000(Lcom/miui/home/settings/AllAppsSettingsFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
