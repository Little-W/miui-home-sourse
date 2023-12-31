.class public Lcom/miui/home/launcher/common/messages/PackageChangedMessage;
.super Ljava/lang/Object;
.source "PackageChangedMessage.java"


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/miui/home/launcher/common/messages/PackageChangedMessage;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/miui/home/launcher/common/messages/PackageChangedMessage;->mPackageName:Ljava/lang/String;

    return-object p0
.end method
