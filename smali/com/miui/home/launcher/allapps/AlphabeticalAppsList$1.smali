.class Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$1;
.super Landroid/mysupport/v7/util/DiffUtil$ItemCallback;
.source "AlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getDifferConfig()Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/mysupport/v7/util/DiffUtil$ItemCallback<",
        "Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)V
    .locals 0

    .line 583
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$1;->this$0:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-direct {p0}, Landroid/mysupport/v7/util/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;)Z
    .locals 0

    .line 591
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->areContentsTheSame(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 583
    check-cast p1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    check-cast p2, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$1;->areContentsTheSame(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;)Z
    .locals 0

    .line 586
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->areItemsTheSame(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 583
    check-cast p1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    check-cast p2, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$1;->areItemsTheSame(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;)Z

    move-result p1

    return p1
.end method
