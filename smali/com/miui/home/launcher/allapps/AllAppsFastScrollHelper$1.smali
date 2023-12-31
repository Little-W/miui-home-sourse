.class Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$1;
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

    .line 53
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->access$000(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-static {v1}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->access$100(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->access$200(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-static {v2}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->access$100(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-static {v3}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->access$000(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->scrollBy(II)V

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->access$008(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)I

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->access$200(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->access$300(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
