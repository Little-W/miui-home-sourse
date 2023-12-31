.class public Lcom/miui/home/launcher/russia/RussiaPreInstallApp;
.super Ljava/lang/Object;
.source "RussiaPreInstallApp.java"


# instance fields
.field public className:Ljava/lang/String;

.field public clickTime:J

.field public flags:I

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->className:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput p3, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->flags:I

    .line 35
    iput-wide p4, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->clickTime:J

    return-void
.end method


# virtual methods
.method public addFlag(I)V
    .locals 1

    .line 47
    iget v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->flags:I

    return-void
.end method

.method public isApp()Z
    .locals 1

    .line 39
    iget p0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->flags:I

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInRussia()Z
    .locals 1

    .line 43
    iget p0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->flags:I

    const/16 v0, 0x40

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeFlag(I)V
    .locals 1

    .line 51
    iget v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->flags:I

    return-void
.end method

.method public resolve()Landroid/content/ContentValues;
    .locals 3

    .line 55
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->className:Ljava/lang/String;

    const-string v2, "class_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-wide v1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->clickTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "click_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    iget p0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->flags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "flag"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RussiaPreInstallApp{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", className=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->className:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", clickTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->clickTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->flags:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
