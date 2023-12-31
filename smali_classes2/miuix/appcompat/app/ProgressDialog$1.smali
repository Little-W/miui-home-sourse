.class Lmiuix/appcompat/app/ProgressDialog$1;
.super Landroid/os/Handler;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/ProgressDialog;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/ProgressDialog;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 179
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 180
    iget-object p1, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    invoke-static {p1}, Lmiuix/appcompat/app/ProgressDialog;->access$100(Lmiuix/appcompat/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    invoke-static {v0}, Lmiuix/appcompat/app/ProgressDialog;->access$000(Lmiuix/appcompat/app/ProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object p1, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    invoke-static {p1}, Lmiuix/appcompat/app/ProgressDialog;->access$200(Lmiuix/appcompat/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    .line 183
    invoke-static {p1}, Lmiuix/appcompat/app/ProgressDialog;->access$300(Lmiuix/appcompat/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    iget-object p1, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    invoke-static {p1}, Lmiuix/appcompat/app/ProgressDialog;->access$400(Lmiuix/appcompat/app/ProgressDialog;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/androidbasewidget/widget/ProgressBar;->getProgress()I

    move-result p1

    .line 185
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    invoke-static {v0}, Lmiuix/appcompat/app/ProgressDialog;->access$400(Lmiuix/appcompat/app/ProgressDialog;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-double v1, p1

    int-to-double v3, v0

    div-double/2addr v1, v3

    .line 187
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 188
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    invoke-static {v0}, Lmiuix/appcompat/app/ProgressDialog;->access$200(Lmiuix/appcompat/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 189
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 191
    iget-object v1, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v1}, Lmiuix/appcompat/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$color;->miuix_appcompat_progress_percent_color:I

    .line 193
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 194
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v1, 0x0

    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x22

    .line 194
    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 199
    iget-object p0, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    invoke-static {p0}, Lmiuix/appcompat/app/ProgressDialog;->access$300(Lmiuix/appcompat/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
