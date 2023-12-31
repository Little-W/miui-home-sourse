.class Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$4;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "BaseAlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getDifferConfig()Landroidx/recyclerview/widget/AsyncDifferConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$4;->this$0:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;)Z
    .locals 0

    .line 711
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->areContentsTheSame(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 703
    check-cast p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    check-cast p2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$4;->areContentsTheSame(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;)Z
    .locals 0

    .line 706
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->areItemsTheSame(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 703
    check-cast p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    check-cast p2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$4;->areItemsTheSame(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;)Z

    move-result p0

    return p0
.end method
