.class public Lcom/miui/home/launcher/EditStateChangeReason;
.super Ljava/lang/Object;
.source "EditStateChangeReason.java"


# instance fields
.field private mReason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/miui/home/launcher/EditStateChangeReason;->mReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/EditStateChangeReason;->mReason:Ljava/lang/String;

    return-object p0
.end method
