.class Lcom/miui/home/settings/MiuiHomeSettings$8;
.super Ljava/lang/Object;
.source "MiuiHomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/MiuiHomeSettings;->showInstallDialog()V
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

    .line 736
    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$8;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 739
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$8;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-static {p1}, Lcom/miui/home/settings/MiuiHomeSettings;->access$400(Lcom/miui/home/settings/MiuiHomeSettings;)Lcom/miui/home/settings/preference/ListPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings$8;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-static {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->access$300(Lcom/miui/home/settings/MiuiHomeSettings;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
