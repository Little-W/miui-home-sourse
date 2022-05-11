.class Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LabelSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/view/LabelSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LabelAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLabels:[Ljava/lang/CharSequence;

.field private final mListener:Lcom/miui/home/launcher/common/OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/OnItemClickListener<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedIndex:I


# direct methods
.method private constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;Lcom/miui/home/launcher/common/OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/CharSequence;",
            "Lcom/miui/home/launcher/common/OnItemClickListener<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 112
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 113
    iput-object p2, p0, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;->mLabels:[Ljava/lang/CharSequence;

    .line 114
    iput-object p3, p0, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;->mListener:Lcom/miui/home/launcher/common/OnItemClickListener;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;Lcom/miui/home/launcher/common/OnItemClickListener;Lcom/miui/home/launcher/view/LabelSeekBar$1;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;Lcom/miui/home/launcher/common/OnItemClickListener;)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;ILandroid/view/View;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;->mListener:Lcom/miui/home/launcher/common/OnItemClickListener;

    iget-object v1, p0, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;->mLabels:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-interface {v0, p2, v1, p1}, Lcom/miui/home/launcher/common/OnItemClickListener;->onItemClick(Landroid/view/View;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;->mLabels:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 105
    check-cast p1, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;->onBindViewHolder(Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter$ViewHolder;I)V
    .locals 2

    .line 130
    iget-object v0, p1, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;->mLabels:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p1, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/home/launcher/view/-$$Lambda$LabelSeekBar$LabelAdapter$VyIkax_oXR-uP-huCVR7bsgj6qE;

    invoke-direct {v1, p0, p2}, Lcom/miui/home/launcher/view/-$$Lambda$LabelSeekBar$LabelAdapter$VyIkax_oXR-uP-huCVR7bsgj6qE;-><init>(Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget v0, p0, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;->mSelectedIndex:I

    if-ne p2, v0, :cond_0

    .line 133
    iget-object p1, p1, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p1, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter$ViewHolder;
    .locals 3

    .line 120
    new-instance p2, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter$ViewHolder;

    iget-object v0, p0, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d008d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method setSelectedIndex(I)V
    .locals 1

    .line 124
    iput p1, p0, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;->mSelectedIndex:I

    .line 125
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method
