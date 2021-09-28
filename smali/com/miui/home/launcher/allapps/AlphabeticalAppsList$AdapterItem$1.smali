.class Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$1;
.super Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;
.source "AlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->asApp(ILjava/lang/String;Lcom/miui/home/launcher/AppInfo;IZ)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;)Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$1;->appLabel:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->appLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$1;->appDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->appDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$1;->iconHeight:I

    iget v1, p1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->iconHeight:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$1;->isDisable:Z

    iget-boolean p1, p1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->isDisable:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public areItemsTheSame(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;)Z
    .locals 2

    .line 110
    iget v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$1;->viewType:I

    iget v1, p1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$1;->isRecommend:Z

    iget-boolean v1, p1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->isRecommend:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$1;->appInfo:Lcom/miui/home/launcher/AppInfo;

    .line 112
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v0

    iget-object p1, p1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
