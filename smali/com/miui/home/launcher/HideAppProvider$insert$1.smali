.class final Lcom/miui/home/launcher/HideAppProvider$insert$1;
.super Ljava/lang/Object;
.source "HideAppProvider.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/HideAppProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $activityName:Ljava/lang/String;

.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic $serialNumber:Ljava/lang/Long;

.field final synthetic this$0:Lcom/miui/home/launcher/HideAppProvider;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/HideAppProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/HideAppProvider$insert$1;->this$0:Lcom/miui/home/launcher/HideAppProvider;

    iput-object p2, p0, Lcom/miui/home/launcher/HideAppProvider$insert$1;->$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/HideAppProvider$insert$1;->$activityName:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/launcher/HideAppProvider$insert$1;->$serialNumber:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/HideAppProvider$insert$1;->this$0:Lcom/miui/home/launcher/HideAppProvider;

    invoke-static {v0}, Lcom/miui/home/launcher/HideAppProvider;->access$getMHideAppList$p(Lcom/miui/home/launcher/HideAppProvider;)Lcom/miui/home/launcher/HideAppList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/HideAppProvider$insert$1;->this$0:Lcom/miui/home/launcher/HideAppProvider;

    invoke-virtual {v1}, Lcom/miui/home/launcher/HideAppProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/bean/HideAppBean;

    iget-object v3, p0, Lcom/miui/home/launcher/HideAppProvider$insert$1;->$packageName:Ljava/lang/String;

    const-string v4, "packageName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/home/launcher/HideAppProvider$insert$1;->$activityName:Ljava/lang/String;

    const-string v5, "activityName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/miui/home/launcher/HideAppProvider$insert$1;->$serialNumber:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, v4, p0}, Lcom/miui/home/launcher/bean/HideAppBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/HideAppList;->addHiddenApp(Landroid/content/Context;Lcom/miui/home/launcher/bean/HideAppBean;)Z

    return-void
.end method
