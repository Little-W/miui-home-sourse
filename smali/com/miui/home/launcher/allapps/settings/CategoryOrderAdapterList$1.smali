.class Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$1;
.super Landroid/mysupport/v7/util/DiffUtil$ItemCallback;
.source "CategoryOrderAdapterList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->getDifferConfig()Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/mysupport/v7/util/DiffUtil$ItemCallback<",
        "Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$1;->this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    invoke-direct {p0}, Landroid/mysupport/v7/util/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;)Z
    .locals 0

    .line 147
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->areContentsTheSame(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 139
    check-cast p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;

    check-cast p2, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$1;->areContentsTheSame(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;)Z
    .locals 0

    .line 142
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->areItemsTheSame(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 139
    check-cast p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;

    check-cast p2, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$1;->areItemsTheSame(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;)Z

    move-result p1

    return p1
.end method
