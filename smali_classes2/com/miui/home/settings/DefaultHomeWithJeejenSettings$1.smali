.class Lcom/miui/home/settings/DefaultHomeWithJeejenSettings$1;
.super Ljava/lang/Object;
.source "DefaultHomeWithJeejenSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings$1;->this$0:Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 50
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "market://details?id=com.jeejen.family&ref=com.miui.home_setting&back=true"

    .line 51
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickJeejenHeadline()V

    .line 53
    iget-object v0, p0, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings$1;->this$0:Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
