.class Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$3;
.super Ljava/lang/Object;
.source "SmallWindowStateHelperUseSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->updateSmallWindowStateInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;


# direct methods
.method constructor <init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$3;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$3;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    invoke-virtual {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->updateSmallWindowState()V

    return-void
.end method
