.class Lcom/miui/home/settings/MiuiHomeSettings$9;
.super Ljava/lang/Object;
.source "MiuiHomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/MiuiHomeSettings;->showHomeSearchBarDialog()V
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

    .line 786
    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$9;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 790
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings$9;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setSelectable(Z)V

    return-void
.end method
