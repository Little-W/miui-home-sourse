.class public Lio/branch/search/BranchSearchError;
.super Lorg/json/JSONObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/BranchSearchError$ERR_CODE;
    }
.end annotation


# instance fields
.field private final errorCode:Lio/branch/search/BranchSearchError$ERR_CODE;

.field private final errorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V
    .locals 0

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lio/branch/search/BranchSearchError;->errorCode:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p0}, Lio/branch/search/BranchSearchError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/BranchSearchError;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "message"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/BranchSearchError;->errorMsg:Ljava/lang/String;

    const-string p1, "code"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lio/branch/search/BranchSearchError$ERR_CODE;->a(I)Lio/branch/search/BranchSearchError$ERR_CODE;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/BranchSearchError;->errorCode:Lio/branch/search/BranchSearchError$ERR_CODE;

    return-void
.end method

.method private getErrorMessage()Ljava/lang/String;
    .locals 3

    const-string v0, "An unknown error occurred."

    iget-object v1, p0, Lio/branch/search/BranchSearchError;->errorCode:Lio/branch/search/BranchSearchError$ERR_CODE;

    sget-object v2, Lio/branch/search/BranchSearchError$ERR_CODE;->f:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne v1, v2, :cond_0

    const-string v0, "Poor network connectivity. Please try again later. Please make sure app has internet access permission"

    goto :goto_0

    :cond_0
    sget-object v2, Lio/branch/search/BranchSearchError$ERR_CODE;->e:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne v1, v2, :cond_1

    const-string v0, "Please add \'android.permission.INTERNET\' in your applications manifest file."

    goto :goto_0

    :cond_1
    sget-object v2, Lio/branch/search/BranchSearchError$ERR_CODE;->g:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne v1, v2, :cond_2

    const-string v0, "Unable to process your request now. An internal error happened. Please try later."

    goto :goto_0

    :cond_2
    sget-object v2, Lio/branch/search/BranchSearchError$ERR_CODE;->h:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne v1, v2, :cond_3

    const-string v0, "Request to Branch server timed out. Please check your connection or try again later."

    goto :goto_0

    :cond_3
    sget-object v2, Lio/branch/search/BranchSearchError$ERR_CODE;->i:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne v1, v2, :cond_4

    const-string v0, "Request was canceled due to new requests being scheduled before it could be completed."

    goto :goto_0

    :cond_4
    sget-object v2, Lio/branch/search/BranchSearchError$ERR_CODE;->j:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne v1, v2, :cond_5

    const-string v0, "The search service is disabled."

    goto :goto_0

    :cond_5
    sget-object v2, Lio/branch/search/BranchSearchError$ERR_CODE;->l:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne v1, v2, :cond_6

    const-string v0, "Unable to open the destination application or its fallback url."

    goto :goto_0

    :cond_6
    sget-object v2, Lio/branch/search/BranchSearchError$ERR_CODE;->m:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne v1, v2, :cond_7

    const-string v0, "Unable to open the web url associated with the app."

    goto :goto_0

    :cond_7
    sget-object v2, Lio/branch/search/BranchSearchError$ERR_CODE;->n:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne v1, v2, :cond_8

    const-string v0, "Unable to open the Google Play Store for the app."

    goto :goto_0

    :cond_8
    sget-object v2, Lio/branch/search/BranchSearchError$ERR_CODE;->o:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne v1, v2, :cond_9

    const-string v0, "An unknown error happened. Unable to open the app."

    goto :goto_0

    :cond_9
    sget-object v2, Lio/branch/search/BranchSearchError$ERR_CODE;->k:Lio/branch/search/BranchSearchError$ERR_CODE;

    if-ne v1, v2, :cond_a

    const-string v0, "On device post-processing error."

    :cond_a
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getErrorCode()Lio/branch/search/BranchSearchError$ERR_CODE;
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchSearchError;->errorCode:Lio/branch/search/BranchSearchError$ERR_CODE;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchSearchError;->errorMsg:Ljava/lang/String;

    return-object v0
.end method
