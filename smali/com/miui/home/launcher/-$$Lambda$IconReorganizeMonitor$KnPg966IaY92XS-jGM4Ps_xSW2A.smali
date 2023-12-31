.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$IconReorganizeMonitor$KnPg966IaY92XS-jGM4Ps_xSW2A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/IconReorganizeMonitor;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$IconReorganizeMonitor$KnPg966IaY92XS-jGM4Ps_xSW2A;->f$0:Lcom/miui/home/launcher/IconReorganizeMonitor;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$IconReorganizeMonitor$KnPg966IaY92XS-jGM4Ps_xSW2A;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$IconReorganizeMonitor$KnPg966IaY92XS-jGM4Ps_xSW2A;->f$0:Lcom/miui/home/launcher/IconReorganizeMonitor;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$IconReorganizeMonitor$KnPg966IaY92XS-jGM4Ps_xSW2A;->f$1:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/IconReorganizeMonitor;->lambda$onReceive$1$IconReorganizeMonitor(Landroid/content/Context;)V

    return-void
.end method
