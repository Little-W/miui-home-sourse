.class Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator$1;
.super Ljava/lang/Object;
.source "MultiSeekBarIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->createAssistantPoint()Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator$1;->this$0:Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 82
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/MinusOneScreenView;->openMinusOne()V

    :cond_0
    return-void
.end method
