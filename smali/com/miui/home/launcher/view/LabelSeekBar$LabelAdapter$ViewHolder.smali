.class Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter$ViewHolder;
.super Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;
.source "LabelSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 147
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    return-void
.end method
