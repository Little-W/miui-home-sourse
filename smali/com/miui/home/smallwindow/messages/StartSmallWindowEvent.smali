.class public Lcom/miui/home/smallwindow/messages/StartSmallWindowEvent;
.super Ljava/lang/Object;
.source "StartSmallWindowEvent.java"


# instance fields
.field private mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/miui/home/smallwindow/messages/StartSmallWindowEvent;->mPkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/miui/home/smallwindow/messages/StartSmallWindowEvent;->mPkgName:Ljava/lang/String;

    return-object v0
.end method
