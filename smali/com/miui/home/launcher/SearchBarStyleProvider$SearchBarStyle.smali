.class Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;
.super Ljava/lang/Object;
.source "SearchBarStyleProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/SearchBarStyleProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchBarStyle"
.end annotation


# instance fields
.field private expId:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private mBackgroundMode:I

.field private mBackgroundRes:Ljava/lang/String;

.field private mBlurStyle:Ljava/lang/String;

.field private mLeftIconRes:Ljava/lang/String;

.field private mRightIconRes:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 236
    iput v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mBackgroundMode:I

    const-string v0, ""

    .line 237
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mBackgroundRes:Ljava/lang/String;

    const-string v0, ""

    .line 238
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mLeftIconRes:Ljava/lang/String;

    const-string v0, ""

    .line 239
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mRightIconRes:Ljava/lang/String;

    const-string v0, ""

    .line 240
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mBlurStyle:Ljava/lang/String;

    const-string v0, ""

    .line 242
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->hash:Ljava/lang/String;

    const-string v0, ""

    .line 243
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->expId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 236
    iput v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mBackgroundMode:I

    const-string v0, ""

    .line 237
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mBackgroundRes:Ljava/lang/String;

    const-string v0, ""

    .line 238
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mLeftIconRes:Ljava/lang/String;

    const-string v0, ""

    .line 239
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mRightIconRes:Ljava/lang/String;

    const-string v0, ""

    .line 240
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mBlurStyle:Ljava/lang/String;

    const-string v0, ""

    .line 242
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->hash:Ljava/lang/String;

    const-string v0, ""

    .line 243
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->expId:Ljava/lang/String;

    .line 250
    iput p1, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mBackgroundMode:I

    .line 251
    iput-object p2, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mBackgroundRes:Ljava/lang/String;

    .line 252
    iput-object p3, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mLeftIconRes:Ljava/lang/String;

    .line 253
    iput-object p4, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mRightIconRes:Ljava/lang/String;

    .line 254
    iput-object p5, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mBlurStyle:Ljava/lang/String;

    .line 255
    iput-object p6, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->expId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBackgroundMode()I
    .locals 1

    .line 275
    iget v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mBackgroundMode:I

    return v0
.end method

.method public getBackgroundRes()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mBackgroundRes:Ljava/lang/String;

    return-object v0
.end method

.method public getBlurStyle()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mBlurStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getExpId()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->expId:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftIconRes()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mLeftIconRes:Ljava/lang/String;

    return-object v0
.end method

.method public getRightIconRes()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mRightIconRes:Ljava/lang/String;

    return-object v0
.end method

.method public setBackgroundMode(I)V
    .locals 0

    .line 279
    iput p1, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mBackgroundMode:I

    return-void
.end method

.method public setBackgroundRes(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mBackgroundRes:Ljava/lang/String;

    return-void
.end method

.method public setBlurStyle(Ljava/lang/String;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mBlurStyle:Ljava/lang/String;

    return-void
.end method

.method public setExpId(Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->expId:Ljava/lang/String;

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->hash:Ljava/lang/String;

    return-void
.end method

.method public setLeftIconRes(Ljava/lang/String;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mLeftIconRes:Ljava/lang/String;

    return-void
.end method

.method public setRightIconRes(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mRightIconRes:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mBackgroundRes:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mLeftIconRes:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mRightIconRes:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mBlurStyle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->hash:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->expId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchBarStyle{mBackgroundMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mBackgroundMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBackgroundRes=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mBackgroundRes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mLeftIconRes=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mLeftIconRes:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mRightIconRes=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mRightIconRes:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mBlurStyle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->mBlurStyle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hash=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->hash:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleProvider$SearchBarStyle;->expId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
