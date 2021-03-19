.class Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$2;
.super Ljava/lang/Object;
.source "AllAppsFastScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$2;->this$0:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$2;->this$0:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->access$500(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->access$402(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$2;->this$0:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->access$602(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;Z)Z

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$2;->this$0:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->access$702(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;Z)Z

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$2;->this$0:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->access$800(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)V

    return-void
.end method
