.class public final synthetic Lcom/miui/home/launcher/view/-$$Lambda$LabelSeekBar$LabelAdapter$VyIkax_oXR-uP-huCVR7bsgj6qE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/view/-$$Lambda$LabelSeekBar$LabelAdapter$VyIkax_oXR-uP-huCVR7bsgj6qE;->f$0:Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;

    iput p2, p0, Lcom/miui/home/launcher/view/-$$Lambda$LabelSeekBar$LabelAdapter$VyIkax_oXR-uP-huCVR7bsgj6qE;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/view/-$$Lambda$LabelSeekBar$LabelAdapter$VyIkax_oXR-uP-huCVR7bsgj6qE;->f$0:Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;

    iget p0, p0, Lcom/miui/home/launcher/view/-$$Lambda$LabelSeekBar$LabelAdapter$VyIkax_oXR-uP-huCVR7bsgj6qE;->f$1:I

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/view/LabelSeekBar$LabelAdapter;->lambda$onBindViewHolder$0$LabelSeekBar$LabelAdapter(ILandroid/view/View;)V

    return-void
.end method
