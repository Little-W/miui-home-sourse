.class Lcom/miui/home/settings/MiuiHomeSettings$16;
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

    .line 823
    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$16;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 827
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$16;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iget-object p1, p1, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    .line 828
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings$16;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-static {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->access$800(Lcom/miui/home/settings/MiuiHomeSettings;)Lmiui/home/lib/dialog/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->dismiss()V

    return-void
.end method
