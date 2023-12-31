.class Lmiuix/appcompat/app/AppCompatActivity$FloatingModeCallback;
.super Ljava/lang/Object;
.source "AppCompatActivity.java"

# interfaces
.implements Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AppCompatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatingModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AppCompatActivity;


# direct methods
.method private constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lmiuix/appcompat/app/AppCompatActivity$FloatingModeCallback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/AppCompatActivity$1;)V
    .locals 0

    .line 411
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity$FloatingModeCallback;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method


# virtual methods
.method public onFloatingWindowModeChanged(Z)V
    .locals 0

    .line 420
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity$FloatingModeCallback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onFloatingWindowModeChanged(Z)V

    return-void
.end method

.method public onFloatingWindowModeChanging(Z)Z
    .locals 0

    .line 415
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity$FloatingModeCallback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onFloatingWindowModeChanging(Z)Z

    move-result p0

    return p0
.end method
