.class Lcom/miui/home/launcher/hotseats/HotSeatsList$2;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "HotSeatsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/hotseats/HotSeatsList;->getDifferConfig()Landroidx/recyclerview/widget/AsyncDifferConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsList;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$2;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;)Z
    .locals 0

    .line 106
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->areContentsTheSame(Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 98
    check-cast p1, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    check-cast p2, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsList$2;->areContentsTheSame(Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;)Z
    .locals 0

    .line 101
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->areItemsTheSame(Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 98
    check-cast p1, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    check-cast p2, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsList$2;->areItemsTheSame(Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;)Z

    move-result p1

    return p1
.end method
