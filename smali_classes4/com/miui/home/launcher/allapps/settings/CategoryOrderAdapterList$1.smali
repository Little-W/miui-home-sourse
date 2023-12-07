.class Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$1;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "CategoryOrderAdapterList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->getDifferConfig()Landroidx/recyclerview/widget/AsyncDifferConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$1;->this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;)Z
    .locals 0

    .line 148
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->areContentsTheSame(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 140
    check-cast p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;

    check-cast p2, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$1;->areContentsTheSame(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;)Z
    .locals 0

    .line 143
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->areItemsTheSame(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 140
    check-cast p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;

    check-cast p2, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$1;->areItemsTheSame(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;)Z

    move-result p0

    return p0
.end method
