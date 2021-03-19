.class Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$1;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "AlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getDifferConfig()Landroidx/recyclerview/widget/AsyncDifferConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$1;->this$0:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;)Z
    .locals 0

    .line 592
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->areContentsTheSame(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 584
    check-cast p1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    check-cast p2, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$1;->areContentsTheSame(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;)Z
    .locals 0

    .line 587
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->areItemsTheSame(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 584
    check-cast p1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    check-cast p2, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$1;->areItemsTheSame(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;)Z

    move-result p1

    return p1
.end method
