.class Lcom/miui/home/settings/MiuiHomeSettings$5;
.super Ljava/lang/Object;
.source "MiuiHomeSettings.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/MiuiHomeSettings;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/MiuiHomeSettings;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/MiuiHomeSettings;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$5;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 264
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings$5;->apply(Ljava/lang/Void;)[Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Void;)[Ljava/lang/Boolean;
    .locals 2

    const/4 p1, 0x2

    .line 267
    new-array p1, p1, [Ljava/lang/Boolean;

    .line 268
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings$5;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-virtual {v0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    .line 269
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 270
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings$5;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-virtual {v0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isCurrentThemeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    .line 271
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    return-object p1
.end method
