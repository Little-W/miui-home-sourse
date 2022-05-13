.class Lcom/miui/home/settings/MiuiHomeSettings$13;
.super Ljava/lang/Object;
.source "MiuiHomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/MiuiHomeSettings;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/MiuiHomeSettings;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/MiuiHomeSettings;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$13;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x0

    .line 694
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackPersonalAssistantSwitch(Z)V

    .line 695
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings$13;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-virtual {p2}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->access$400(Lcom/miui/home/settings/MiuiHomeSettings;Landroid/content/ContentResolver;Z)V

    .line 696
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings$13;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-static {p2}, Lcom/miui/home/settings/MiuiHomeSettings;->access$500(Lcom/miui/home/settings/MiuiHomeSettings;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 697
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings$13;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iget-object p2, p2, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p2, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    return-void
.end method
