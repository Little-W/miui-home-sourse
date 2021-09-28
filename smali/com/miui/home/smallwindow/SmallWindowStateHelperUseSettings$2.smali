.class Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$2;
.super Landroid/database/ContentObserver;
.source "SmallWindowStateHelperUseSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;


# direct methods
.method constructor <init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;Landroid/os/Handler;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    invoke-static {p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->access$000(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;)V

    return-void
.end method
