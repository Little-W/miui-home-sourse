.class Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->sendFileToDeviceByBtMac(Landroid/app/Activity;Ljava/lang/String;ILjava/util/ArrayList;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

.field public final synthetic val$cr:Landroid/content/ContentResolver;

.field public final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$3;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$3;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$3;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$3;->val$cr:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$3;->val$extras:Landroid/os/Bundle;

    const-string v1, "sendFileByBtMac"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
