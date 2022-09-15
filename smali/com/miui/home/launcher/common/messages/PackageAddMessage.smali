.class public Lcom/miui/home/launcher/common/messages/PackageAddMessage;
.super Ljava/lang/Object;
.source "PackageAddMessage.java"


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/miui/home/launcher/common/messages/PackageAddMessage;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/miui/home/launcher/common/messages/PackageAddMessage;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
