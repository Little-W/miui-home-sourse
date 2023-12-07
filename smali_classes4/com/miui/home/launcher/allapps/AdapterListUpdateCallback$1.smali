.class Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$1;
.super Ljava/lang/Object;
.source "AdapterListUpdateCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$1;->this$0:Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$1;->this$0:Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->beforeNotifyData()V

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$1;->this$0:Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->access$000(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 72
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$1;->this$0:Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->afterNotifyData()V

    return-void
.end method
