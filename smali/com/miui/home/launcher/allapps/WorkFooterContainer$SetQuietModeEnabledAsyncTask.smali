.class final Lcom/miui/home/launcher/allapps/WorkFooterContainer$SetQuietModeEnabledAsyncTask;
.super Landroid/os/AsyncTask;
.source "WorkFooterContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/WorkFooterContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetQuietModeEnabledAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final enabled:Z

.field private final reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/allapps/WorkFooterContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLjava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/allapps/WorkFooterContainer;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 139
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer$SetQuietModeEnabledAsyncTask;->enabled:Z

    .line 140
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer$SetQuietModeEnabledAsyncTask;->reference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 134
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/WorkFooterContainer$SetQuietModeEnabledAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 154
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer$SetQuietModeEnabledAsyncTask;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/allapps/WorkFooterContainer;

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer$SetQuietModeEnabledAsyncTask;->enabled:Z

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/library/compat/UserManagerCompat;->requestQuietModeEnabled(Landroid/content/Context;Z)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 134
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/WorkFooterContainer$SetQuietModeEnabledAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 163
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer$SetQuietModeEnabledAsyncTask;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;

    if-eqz p0, :cond_0

    .line 165
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->access$000(Lcom/miui/home/launcher/allapps/WorkFooterContainer;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 166
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->access$100(Lcom/miui/home/launcher/allapps/WorkFooterContainer;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 145
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer$SetQuietModeEnabledAsyncTask;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;

    if-eqz p0, :cond_0

    .line 147
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->access$000(Lcom/miui/home/launcher/allapps/WorkFooterContainer;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 148
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->access$100(Lcom/miui/home/launcher/allapps/WorkFooterContainer;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method
